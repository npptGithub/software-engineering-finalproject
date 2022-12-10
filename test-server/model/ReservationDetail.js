const mongoose = require('mongoose')
const Schema = require('Schema')

const ReservationDetail= new Schema({
    hotel_id: {
        type: Schema.Types.ObjectsId,
        ref: 'hotel'
    },
    reservation_id: {
        type: Schema.Types.ObjectsId,
        ref: 'reservation'
    },
})

mongoose.exports = mongoose.model('reservation_detail',ReservationDetail)