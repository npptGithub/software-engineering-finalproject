const express = require('express')
const Reservation = require('../model/Reservation')
const router = express.Router()
const verify = require('../middleware/auth')

// @route GET = api/post
// @desc Create reservation
// @access Private

router.get('/',verify, async(req,res)=>{
    try{
        const post = await Reservation.find({user: req.userId}).populate('user', ['username'])
        res.json({success:true, post})
    }catch {
        console.log(error)
        req.status(500).json({success:false, message: "Internal server error"})
    }
})
// @route POST = api/post
// @desc Create reservation
// @access Private

router.post('/', verify, async(req,res)=>{
    const {stat,quantity} = req.body
    try {
        const newReser = new Reservation({stat: stat||"PROCESSING",quantity})
        await newReser.save()
    }catch(error)
    {
        console.log(error)
        res.status(500).json({success:false, message: "Internal server error"})
    }
})

// @route PUT = api/post
// @desc Update reservation
// @access Private

router.put('/:id',verify,async (req,res)=>{
    const {stat,quantity} = req.body
    try {
        const newReser = new Reservation({stat: stat||"PROCESSING",quantity})
        await newReser.save()
    }catch(error)
    {
        console.log(error)
        res.status(500).json({success:false, message: "Internal server error"})
    }
})
module.exports = router