#!/bin/bash
#Каждый последующий в очереди будет по центру между двумя соседями,
#но ближе к выходу, таким образом если делить очередь и выбирать
#центральный элемент при нечетных со сдвигом влево, 
#то последним останется предпоследний элемент
echo "$(($1-1))"
exit 0
