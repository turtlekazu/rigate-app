import hljs from 'highlight.js';

function markdownCode() {
  const codeInput = document.getElementById('user_answer_code');
  const codeMarkdown = document.getElementById('code_markdown');
  if (codeInput == null || codeMarkdown == null) {
    return;
  }

  codeInput.addEventListener('input', () => {
    const HTML = codeInput.value;
    codeMarkdown.innerHTML = marked(HTML);
    hljs.initHighlighting();
  });
};

window.addEventListener("load", markdownCode);
