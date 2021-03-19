import highlight from 'highlight.js';

function markdownCode() {
  let codeInput = document.getElementById('user_answer_code');
  let codeMarkdown = document.getElementById('code_markdown');
  if (codeInput == null || codeMarkdown == null) {
    return;
  }

  codeInput.addEventListener('input', () => {
    let HTML = "```ruby\n" + `${codeInput.value}` + "\n```";
    let res = highlight.highlightAuto(marked(HTML));
    codeMarkdown.innerHTML = res.value;
  });
};

window.addEventListener("load", markdownCode);
