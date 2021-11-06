import { Component, OnInit } from '@angular/core';
import { DynamodbService } from 'src/app/services/dynamodb.service';

@Component({
  selector: 'app-asignacion',
  templateUrl: './asignacion.component.html',
  styleUrls: ['./asignacion.component.css']
})
export class AsignacionComponent implements OnInit {

  constructor(public dynamodb: DynamodbService) { }

  ngOnInit(): void {
  }

  Curso = "";
  Periodo = "";
  Carnet = "";
  listaasignacion = [{
    periodo: "",
    estudiante: "",
    curso: ""
  }];
  newasignacion(){
    this.listaasignacion = [];
    
    this.dynamodb.asignacioncurso(this.Carnet, this.Curso, this.Periodo).subscribe((res:any) => {
      for(let item of res.data){
        this.listaasignacion.push(
          {
            periodo: item.periodo.S,
            estudiante: item.estudiante.N,
            curso: item.curso.N
          });
      }   
    });
  }
}
