const aws_keys = require('../credentials/credintials');
const AWS = require('aws-sdk');
const ddb = new AWS.DynamoDB.DocumentClient(aws_keys.dynamodb);

//ESTUDIANTE NUEVO
const newstudent = async(req, res) =>{
    
    ddb.update({
        TableName: "usuario_p1",
        Key: {
            id: id_user
        },
        UpdateExpression: "SET #albums = :albums",
        ExpressionAttributeNames: { "#albums": "albums" },
        ExpressionAttributeValues: {
            ":albums": albums
        }
    }, function(err, data) {
        if (err) {
            console.log('Error saving album: ', err);
            res.send({
                'message': 'dbd failed',
                'estado': '400'
            });
        } else {
            console.log('Save album success:', data);
            res.send({
                'message': 'ddb success',
                'estado': '200'
            });
        }
    });

    res.send({
        status: "success"
    })
}

//CURSO NUEVO
const newcourse = async(req, res) =>{
    res.send({
        status: "success"
    })
}

//ASIGNACION DE CURSO
const newasignacion = async(req, res) =>{
    res.send({
        status: "success"
    })
}
//VISUALIZAR ESTUDIANTE POR CURSO
const getestudiante = async(req, res) =>{
    res.send({
        status: "success"
    })
}

//REGISTRAR ACTIVIDAD
const newactivity = async(req, res) =>{
    res.send({
        status: "success"
    })
}

//INGRESO NOTA ACTIVIDAD
const newnota = async(req, res) =>{
    res.send({
        status: "success"
    })
}

//VISUALUZAR NOTA DE ACTIVIDAD
const getnota = async(req, res) =>{
    res.send({
        status: "success"
    })
}

module.exports = {
    newstudent,
    newcourse,
    newasignacion,
    getestudiante,
    newactivity,
    newnota,
    getnota
}