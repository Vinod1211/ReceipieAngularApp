import { Component } from '@angular/core';
import { Recipe } from '../recipes.model';

@Component({
  selector: 'app-recipes-list',
  templateUrl: './recipes-list.component.html',
  styleUrl: './recipes-list.component.css'
})
export class RecipesListComponent {
  recipes: Recipe[] = [
    new Recipe('A Test Recipe','This is a Test Recipe','https://live.staticflickr.com/2072/2064905664_dc1e78918a_b.jpg')
  ];

}
