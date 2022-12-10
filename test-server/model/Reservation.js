const mongoose = require('mongoose')
const Schema = mongoose.Schema

const Reservation = new Schema({
    stat: {
        type: String,
        enum: ["COMPLETE","PROCESSING","DISABLED"],
    },
    user_id: {
        type: Schema.Types.ObjectId,
        ref: 'users', 
    },
    quantity: {
        type: Number
    }
})
module.exports = mongoose.model('reservation',Reservation)