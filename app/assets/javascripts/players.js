// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
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
