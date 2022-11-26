const mongoose = require('mongoose')
const Schema = mongoose.Schema

const UserSchema = new Schema({
    username: {
        type: String,
        require: true,
        unique: true
    },
    password: {
        type: String,
        require: true
    },
    createdAt: {
        type: Date,
        default: Date.now
    },
    fullName:{
        type: String,
    },
    phoneNumber:{
        type: String,
        require: true
    },
    email: {
        type: String,
    },
    role:{
        type: String,
    },
    DOB:{
        type: Date,
    },
    stat:{
        type: String,
        enum: ['AVAILABLE','UNAVAILABLE']
    },
})

module.exports = mongoose.model('users',UserSchema)