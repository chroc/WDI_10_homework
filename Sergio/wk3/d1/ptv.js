// Train Lines
var alamein = ["Flinders Street", "Richmond", "East Richmond", "Burnley",
                "Hawthorn", "Glenferrie"];
var glenWaverly = ["Flagstaff", "Melbourne Central", "Parliament", "Richmond",
                    "Kooyong", "Tooronga"];
var sandrinham = ["Southern Cross", "Richmond", "South Yarra", "Prahran", "Windsor"];

var stopsTotal;
// Origin and Destination
// var origin = prompt("Enter Origin");
// var destination = prompt("Enter Destination");
//
// computeRoute(origin, destination);


// Returns the array line that contains the origin
function getOriginLine(origin){
  if (alamein.includes(origin)) {
    return alamein;
  }else if (glenWaverly.includes(origin)) {
    return glenWaverly;
  }else {
    return sandrinham;
  }
}

// Returns the array line that contains the destination
function getDestinationLine(destination){
  if (alamein.includes(destination)) {
    return alamein;
  }else if (glenWaverly.includes(destination)) {
    return glenWaverly;
  }else {
    return sandrinham;
  }
}

// Are the stations on the same line
function areInSameLine(originLine, destinationLine){
  if (originLine === destinationLine) {
    return true;
  }else {
    return false;
  }
}


function computeRoute(origin, destination){
  var arrayJourney = [];
  var arrayOrigin = getOriginLine(origin);
  var arrayDestination = getDestinationLine(destination);
  var journey = "";
  stopsTotal = 0;
  var difference = 0;

  if (areInSameLine(arrayOrigin, arrayDestination)) {
    //.. Same Line
    var originIndex = arrayOrigin.indexOf(origin);
    var destinationIndex = arrayOrigin.indexOf(destination);
    difference = destinationIndex - originIndex;
    if (difference > 0) {
      //.. Positive
      for (var i = originIndex; i <= destinationIndex; i++) {
        arrayJourney.push(arrayOrigin[i]);
      }
      stopsTotal = arrayJourney.length - 1;
      journey = arrayJourney.join(" --> ");

      console.log(journey);
      console.log(stopsTotal + " stopsTotal");
      return journey;
    }else {
      //.. Negative
      for (var i = originIndex; i >= destinationIndex; i--) {
        arrayJourney.push(arrayOrigin[i]);
      }
      journey = arrayJourney.join(" --> ");
      stopsTotal = arrayJourney.length - 1;
      console.log(journey);
      console.log(stopsTotal + " stopsTotal");
      return journey;
    }
  }else {
    //.. Not Same Line
    var originIndex = arrayOrigin.indexOf(origin);
    var destinationIndex = arrayDestination.indexOf(destination);
    var richIndexLine1 = arrayOrigin.indexOf("Richmond");
    var richIndexLine2 = arrayDestination.indexOf("Richmond");
    differenceLine1 = richIndexLine1 - originIndex; // line1
    differenceLine2 = destinationIndex - richIndexLine2; // line2
    //debugger;
    // Calculate difference line1
    if (differenceLine1 > 0) {
      //.. Positive
      for (var i = originIndex; i <= richIndexLine1; i++) {
        arrayJourney.push(arrayOrigin[i])
      }
      // Calculate the difference line2
      if (differenceLine2 > 0) {
        //.. Positive
        for (var i = richIndexLine2 + 1; i <= destinationIndex; i++) {
          arrayJourney.push(arrayDestination[i]);
        }
      }else {
        for (var i = richIndexLine2 - 1; i >= destinationIndex; i--) {
          arrayJourney.push(arrayDestination[i]);
        }
      }
      //console.log(arrayJourney);
      journey = arrayJourney.join(" --> ");
      stopsTotal = arrayJourney.length - 1;
      console.log(journey);
      console.log(stopsTotal + " stopsTotal");
      return journey;
    }else {
      //.. Negative
      for (var i = originIndex; i >= richIndexLine1; i--) {
         arrayJourney.push(arrayOrigin[i]);
      }
      // Calculate the difference line2
      if (differenceLine2 > 0) {
        //.. Positive
        for (var i = richIndexLine2 + 1; i <= destinationIndex; i++) {
          arrayJourney.push(arrayDestination[i]);
        }
      }else {
        for (var i = richIndexLine2 - 1; i >= destinationIndex; i--) {
          arrayJourney.push(arrayDestination[i]);
        }
      }
      //console.log(arrayJourney);

      journey = arrayJourney.join(" --> ");
      stopsTotal = arrayJourney.length - 1;
      console.log(journey);
      console.log(stopsTotal + " stopsTotal");
      return journey;
    }
  }
}
