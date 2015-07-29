sequelize.sync().success(function(){
	Quiz.count().success(function(count){
		if(count === 0){
			Quiz.create({
				pregunta: 'Capital de italia',
				respuesta: 'Roma'
			}).success(function(){
				console.log('Base de datos inicializada')
			});
		};
	});
});