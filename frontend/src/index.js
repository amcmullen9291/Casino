document.addEventListener('DOMContentLoaded', (event) => {
    console.log('DOM fully loaded and parsed');
  });
window.onload = startGame;
  
  
  var balance;
  var newCard;
  var oldCard;
  let bid = 25.00;
  let buttonElement = document.getElementById('pause');
  let plusButtonElement = document.getElementById('plus');
  let minusButtonElement = document.getElementById('minus');
  let cashOutButtonElement = document.getElementById('cashOut');
  let available = document.getElementById('balance');
  let bidding = document.getElementById('bidding');
  let box = document.getElementById("details_plus");
  let startGameButton = document.getElementById("scrolling_words");
  let playButton = document.getElementById("playButton")

  let number = 1;
  const music = document.getElementById('welcome');
  const audio = document.querySelector("audio");

  bidding.innerHTML = bid;
  
  
  let paragraph = document.createElement('span');
  document.body.appendChild(paragraph);
  paragraph.id = "cardBanner";
  paragraph.innerText = 'Current Card';
  // paragraph.style.fontSize = "36px";
  // paragraph.style.color = "purple";
  // paragraph.style.background = "orange";
  // paragraph.style.width = "500px";
  // paragraph.style.fontFamily = "Georgia";
  // paragraph.style.textAlignLast = "center";
  
  let parent = document.createElement("div");
  let p = document.createElement("p");
  p.id = "round_banner"; // Set the id
  box.appendChild(parent);
  parent.append(p);
  
  p.innerHTML = "Results :";
  parent.style.background = "tan";

  document.body.style.backgroundColor = "grey";
  document.body.width = "350em";
  cashOutButtonElement.style.background = "yellow";

  music.addEventListener("click", () => {
    if (audio.paused) {
      audio.volume = 0.5;
      audio.play();      
    } else {
      audio.pause();
    };
  });
    
  buttonElement.addEventListener('click', function (event) {
  balance -= bid
  if (balance >= 0 && bid != 0){
  available.innerHTML = "$" + balance + ".00" ;
  buttonElement.disabled = true;
  let dealButton = document.getElementById("cardDealer");
  dealButton.disabled = false;
  };
  if (balance < 0){
    alert("See? Now, You don't have enough money to buy a cheeseburger on the ride home.");
    window.location.reload();
  }
  if (bid == 0){
    swal(" ", "You Can't Bid Nothing.", "warning", {timer: 1000,});
  }
  });

  buttonElement.addEventListener("mouseover", function( event ){
  event.target.style.color = "white";
  event.target.style.backgroundColor = "darkred";
  setTimeout(function() {
    event.target.style.color = "";
    event.target.style.backgroundColor = "";
  }, 750);
  });
  
  cashOutButtonElement.addEventListener('click', function (event) {
  //   if (balance >= 0 ) {
  swal("Congratulations. You Left With " + balance + " dollars !");
  // if (balance < 0) {
  //   balance = balance*(-1)
  //   alert("You Docile Cow, You Owe the Bank " + balance + " dollars.")};
    setTimeout(function(){window.location.reload();},4000);
  });

  plusButtonElement.addEventListener('click', function (event) {
    bid += 5
    bidding.innerHTML = bid;
    if (bid > 45){
      bidding.style.color = "red";
    };
    if (bid > 95){
      bidding.style.color = "purple";
    };
  });
  
  minusButtonElement.addEventListener('click', function (event) {
      if (bid >= 5){
      bid -= 5;
    };
    if (bid < 50){
      bidding.style.color = "black";
    };
      if (bid >= 0){
      bidding.innerHTML = bid;
    };
    if (bid == 0){
      swal(" ", "Please Place A Bid.", "info", {timer: 1000,});
    };
  });

// ------------User input Objects------------
var guestObject;
var guestName;
var cardsObject;
if(cardsObject){
var deckLength = cardsObject.length}

function startGame() {
    const playButton= document.getElementById("playButton");    
    playButton.addEventListener("click", function(event){
      // alert("Congratulations!");
     fetch('http://[::1]:3000/api/cards')
      .then(response => response.json())

      .then(data => {
        cardsObject = data})
      // .then(console.log),
    fetch('http://[::1]:3000/api/guests/1')
      .then(response => response.json())
      .then(data => {guestObject = data})
      .then(console.log)  
        begin();
    });

  };

  function begin(){
    let cardGame = document.getElementById('details_cards');
    setTimeout(() => {cardGame.innerHTML =" " },750);
    cardGame.style.fontSize = "48px";
    cardGame.style.color = "orangered";
    cardGame.style.textAlign = "center";

    setTimeout(()  => {cardGame.innerHTML =" Begin!" },1000);
    setTimeout(() => {cardGame.innerHTML =" " },2500);
    setTimeout(() => { findOrCreate() },3400);

  }

function findOrCreate(){
    swal("Welcome Back, ", guestObject["data"][0].attributes["name"], {timer: 1000,});
    available.innerHTML = "$" + guestObject["data"][0].attributes["balance"] + "0";
     balance =  guestObject["data"][0].attributes["balance"];
    dealCards();
  };

  function pGenerate(result) {
  let time = "times";
  for (i=1; i <= 1; i++) {
//     let button5 = document.createElement('button');
// button5.class = "likeButton"
// button5.innerHTML = "Good Round";
// button5.style.background = "purple";

// --------------------
    var outcome = result
    var br = document.createElement("br");
    var newP = document.createElement("p");
    var pText = document.createTextNode("Round " + number + ": " + outcome);
    // let likedTimes = document.createElement('li');
    // let likes = 0;

    // button5.addEventListener('click', function (event) {
    //   likes += 1;
    //   likedTimes.innerHTML = likes;

    // });
     
    newP.appendChild(pText);
    box.appendChild(pText);
    // box.appendChild(button5);
    // box.append(likedTimes);
    box.appendChild(br);



    newP.id = "turn";
    var looping = document.getElementById("turn"); 
    var contentSection = document.getElementById("content");
    document.body.insertBefore(newP, contentSection);
  
    number +=1
  };

  }