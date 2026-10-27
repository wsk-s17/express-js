import cors from 'cors'
import express from 'express'

const app = express()

app.use(cors())

app.get('/test', function (req, res, next) {
	res.json({
		msg: 'This is CORS-enabled for all origins!'
	})
})

export default app
