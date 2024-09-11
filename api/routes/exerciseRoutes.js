const express = require('express');
const exerciseController = require('../controllers/exerciseController');

const router = express.Router();

const subRoute = '/exercise';

router.get(`${subRoute}`, exerciseController.getExercises);

module.exports = router;