function viewContents() {
  const arrowR = document.getElementById('arrow_right');
  const arrowL = document.getElementById('arrow_left');
  if (arrowR == null && arrowL == null) {
    return;
  }

  const firstContent = document.getElementById('contents_list').firstElementChild;
  let currentContent = firstContent;
  if (firstContent == null) {
    return;
  }
  currentContent.style.display = 'block';
  if (currentContent.nextElementSibling == null) {
    arrowR.style.display = 'none';
  } else { arrowR.style.display = 'block'; }
  if (currentContent.previousElementSibling == null) {
    arrowL.style.display = 'none';
  } else { arrowL.style.display = 'block'; }

  arrowR.addEventListener("click", () => {
    currentContent.style.display = 'none';
    currentContent = currentContent.nextElementSibling;
    currentContent.style.display = 'block';
    if (currentContent.nextElementSibling == null) {
      arrowR.style.display = 'none';
    } else { arrowR.style.display = 'block'; }
    if (currentContent.previousElementSibling == null) {
      arrowL.style.display = 'none';
    } else { arrowL.style.display = 'block'; }
  });

  arrowL.addEventListener("click", () => {
    currentContent.style.display = 'none';
    currentContent = currentContent.previousElementSibling;
    currentContent.style.display = 'block';
    if (currentContent.nextElementSibling == null) {
      arrowR.style.display = 'none';
    } else { arrowR.style.display = 'block'; }
    if (currentContent.previousElementSibling == null) {
      arrowL.style.display = 'none';
    } else { arrowL.style.display = 'block'; }
  });
}


window.addEventListener("load", viewContents);
