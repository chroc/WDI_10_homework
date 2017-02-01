originDOMElement = document.getElementById("origin");
destinationDOMElement = document.getElementById("destination");
computeRouteDOMElement = document.getElementById("btnComputeJourney");
journeyDOMElement = document.getElementById("journeyDOMElement");
btnResetDOMElement = document.getElementById("btnReset");
var resultElement = document.createElement("h3");

computeRouteDOMElement.addEventListener("click", function(){
  var origin = originDOMElement.value;
  var destination = destinationDOMElement.value;
  var journey1 = computeRoute(origin, destination);
  resultElement.textContent = journey1 + " :: " + stopsTotal + " stops total";
  document.body.appendChild(resultElement);
})

btnResetDOMElement.addEventListener("click", function(){
  resultElement.textContent = "";
  originDOMElement.value = "";
  destinationDOMElement.value = "";
})
