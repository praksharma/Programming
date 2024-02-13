const disp = document.getElementById('disp');

function appendfunc(input){
    disp.value += input;
}

function ClrDisp(){
    disp.value = "";
}

function calculate(){
    try{
        disp.value = eval(disp.value);
    }
    catch(err){
        disp.value = "Looser";
    }
}