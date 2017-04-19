express    = require 'express'
bodyParser = require 'body-parser'
path       = require 'path'
hbs        = require 'hbs'

app = express()

# Установка порта на 4000
app.set 'port', process.env.PORT or 4000

# Настройка Handlebars 
app.set 'views', path.join(__dirname, 'views')
app.set 'view engine', 'hbs'
hbs.registerPartials __dirname + '/views/partials'

# Настройка BodyParser
app.use bodyParser.json()
app.use bodyParser.urlencoded({ extended: false })
app.use express.static(path.join(__dirname, 'public'))

# Настройка роутеров
app.use '/', require './routes/index'

# Сервер
app.get     '/',            (req, res) -> 
    res.send({ status: true, data: "Service is available" })

app.listen app.get('port'), ->
  console.log "Listening on port #{app.get('port')}"