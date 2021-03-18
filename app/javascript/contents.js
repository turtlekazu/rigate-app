function viewContents() {
  const arrowR = document.getElementById('arrow_right');
  const arrowL = document.getElementById('arrow_left');
  if (arrowR == null && arrowL == null) {
    return;
  }

  const nextButton = document.getElementById('next_button');
  const firstContent = document.getElementById('contents_list').firstElementChild;
  let currentContent = firstContent;
  if (firstContent == null) {
    return;
  }
  currentContent.style.display = 'block';
  switchArrow();

  arrowR.addEventListener("click", () => {
    currentContent.style.display = 'none';
    currentContent = currentContent.nextElementSibling;
    currentContent.style.display = 'block';
    switchArrow();
  });

  arrowL.addEventListener("click", () => {
    currentContent.style.display = 'none';
    currentContent = currentContent.previousElementSibling;
    currentContent.style.display = 'block';
    switchArrow();
  });

  function switchArrow() {
    if (currentContent.nextElementSibling == null) {
      arrowR.style.display = 'none';
      nextButton.style.display = 'block';
    } else {
      arrowR.style.display = 'block'; 
      nextButton.style.display = 'none';
    }
    if (currentContent.previousElementSibling == null) {
      arrowL.style.display = 'none';
    } else { arrowL.style.display = 'block'; }
  }
}


window.addEventListener("load", viewContents);
