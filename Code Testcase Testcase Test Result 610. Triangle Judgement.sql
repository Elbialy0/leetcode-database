select x , y , z , (case when z<x+y and x<y+z and y<x+z then 'Yes' else 'No' end) as triangle 
from Triangle
