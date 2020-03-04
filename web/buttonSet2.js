/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


/* global myForm1 */

function moveNext(){
    var counter = 0;
    counter = parseInt(document.myForm1.hidden.value)+1;
    document.myForm1.hidden.value=counter;
    myForm1.submit();
}
function movePrevious(){
    var counter = 0;
    counter = parseInt(document.myForm1.hidden.value)-1;
    document.myForm1.hidden.value=counter;
    myForm1.submit();
}

