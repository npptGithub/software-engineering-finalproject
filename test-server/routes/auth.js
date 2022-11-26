const express = require('express')
const router = express.Router()

const verifyToken = require('../middleware/auth')
const argon2 = require('argon2')
const User = require('../model/User')
const jwt = require('jsonwebtoken')
//  @auth GET api/auth
//  @desc Check if user is authenticated
//  @access Public
router.get('/',verifyToken, async (req, res) => {
    try {
        const user = await User.findById(req.userId).select('-password')
        if (!user) 
        return res.status(400).json({success: false,message: 'User not found'});
        res.json({success: true,message: 'User found'});
    } catch (error) {
        console.log(error)
        res.status(500).json({success: false,message: 'Internal Server Error'}); 
    }
})


//  @auth POST api/auth/register
//  @desc Register user
//  @access Public
router.post('/register', async (req,res) => {
    const {username,password,fullName,phoneNumber,email,role,DOB} = req.body
    //Simple validation
    const temp = ['username','password','fullName','phoneNumber','email','DOB','role']
    const pro = [username, password,fullName,phoneNumber,email,DOB,role]
    temp.forEach(function (item,index){
        if(!pro[index]){
            return res.status(400).json({success: false, message: `Missing ${item}`})
        }
    })
    // Check for existing user
    try {
        const user = await User.findOne({ username })
        if(user){
            return res.status(400).json({success: false,message: `${username} already taken` })
        }
        
        // Done CFEU
        // Hash user's password and create user

        const hashedPassword = await argon2.hash(password)
        const newUser = new User({username,password: hashedPassword,fullName,phoneNumber,email,role,DOB,stat: 'UNAVAILABLE'})
        await newUser.save()

        // Return token
        const accessToken = jwt.sign({userId: newUser._id}, process.env.ACCESS_TOKEN_SECRET,{expiresIn : '30s'})
        res.json({
            success:true,
            message:'User created successfully',
            accessToken
        })
    }catch(error){
        console.log(error)
        res.status(500).json({success:false, message:`Internal server error`})
    }
})
//  @auth POST api/auth/login
//  @desc login user
//  @access Public

router.post('/login',async (req,res) =>{
    const { username, password } = req.body
    //Simple validation
    const temp = ['username','password']
    const pro = [username, password]
    if(!username|| !password)
    temp.forEach(function (item,index){
        if(!pro[index]){
            return res.status(400).json({success: false, message: `Missing ${item}`})
        }
    })
    try {
        const user = await User.findOne({username})
        if (!user){
            return res.status(400).json({success: false, message: `User not found!`})
        }
        const passwordValid = await argon2.verify(user.password,password)
        if (!password==passwordValid){
            return res.status(400).json ({success:false, message: `Wrong password!`})
        }
        const accessToken = jwt.sign({userId: user._id},process.env.ACCESS_TOKEN_SECRET)
        res.json({
            success: true,
            message: 'Login success',
            accessToken
        })
    }catch(error){
        console.log(error)
        res.status(500).json({success:false, message:`Internal server error`})
    }
})
module.exports = router
