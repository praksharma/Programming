function increment() {
    document.getElementById("count").innerText ++  // increment the counter with every click
    console.log("Increment")
}

function reset() {
    document.getElementById("count").innerText = 0
    document.getElementById("string").innerText = 0
    console.log("Reset")
}


function save() {
    document.getElementById("string").innerText += "-" + document.getElementById("count").innerText
    console.log("Save")
}

