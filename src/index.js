const express = require("express");
const morgan = require("morgan");
const exphbs = require('express-handlebars');
const path = require('path')

//inicialize express
const app = express();


app.set('port',process.env.PORT || 4000);
app.set('views',path.join(__dirname,'views'))

//settings
const hbs = exphbs.create({
    defaultLayout: 'main.hbs',
    layoutsDir: path.join(app.get('views'),'layouts'),
    partialsDir: path.join(app.get('views'), 'parciales'), // Asegúrate de que esta ruta sea correcta
    extname: '.hbs',
    helpers: require('./lib/handlebars')
})
app.engine('.hbs',hbs.engine);
app.set('view engine', '.hbs');
//middlewares
app.use(morgan('dev'));
app.use(express.urlencoded({extended:false}))
app.use(express.json());

//variables globales
app.use((req,res,next)=>{
    
    next();
})

//routes
app.use(require('./routes'))
app.use(require('./routes/autenticacion'))
app.use('/formatos',require('./routes/formatos'))
app.use('/control',require('./routes/formatos'))

//public
app.use(express.static(path.join(__dirname,'public')))

app.listen(app.get('port'),()=>{
    console.log('Server on port', app.get('port'));
})