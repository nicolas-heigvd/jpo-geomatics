App.players = App.cable.subscriptions.create("PlayersChannel", {
  connected: function() {
    // Called when the subscription is ready for use on the server
    console.log('connected');
  },

  disconnected: function() {
    // Called when the subscription has been terminated by the server
    console.log('disconnected');
  },

  received: function(data) {
    // Called when there's incoming data on the websocket for this channel
    console.log('received data');
    var logged = $('body').data('logged');
    if (logged) {
      var pseudo = data.pseudo;
      var id = data.id;
      var line;

      removePlayerLine(id);

      $('#players tr').each(function(){
        var currentLine = $(this);
        var currentPseudo = currentLine.find('td.pseudo').text();
        if (currentPseudo.localeCompare(pseudo) >= 0) {
          line = currentLine;
          return false;
        }
      });
      if (!line) {
        $('#players').append(data.player);
      } else {
        line.before(data.player);
      }
    }
    else if (data.scoreGeo !== null && data.scoreGci !== null && data.scoreGen !== null) {
      var scoreTotal = data.scoreGeo + data.scoreGci + data.scoreGen;
      var pseudo = data.pseudo;
      var id = data.id;
      var line;

      removePlayerLine(id);

      $('#players tr').each(function(){
        var currentLine = $(this);
        var currentScoreTotal = currentLine.find('td.score-total').text();
        if (currentScoreTotal < scoreTotal) {
          line = currentLine;
          return false;
        }
      });
      if (!line) {
        $('#players').append(data.player);
      } else {
        line.before(data.player);
      }
    }
  }
});

// Check if the id already exists and, if it is the case, remove the line
function removePlayerLine(id) {
  $('#players tr').each(function(){
   var currentLine = $(this);
   var currentId = currentLine.data('id');
   if (currentId == id) {
     currentLine.remove();
     return false;
   }
  });
}

let checkbox = document.getElementById('reveal');
let box = document.getElementById('winner');
box.style.visibility = 'hidden';

checkbox.addEventListener('click', function handleClick() {
  if (checkbox.checked) {
    box.style.visibility = 'visible';
  } else {
    box.style.visibility = 'hidden';
  }
});
