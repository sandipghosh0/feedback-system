/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


function moveNext(){
    var counter = 0;
    counter = parseInt(document.myForm.hidden.value)+1;
    document.myForm.hidden.value=counter;
    myForm.submit();
}
function movePrevious(){
    var counter = 0;
    counter = parseInt(document.myForm.hidden.value)-1;
    document.myForm.hidden.value=counter;
    myForm.submit();
}

