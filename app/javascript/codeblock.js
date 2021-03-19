function markdownCode() {
  let codeInput = document.getElementById('user_answer_code');
  let codeMarkdown = document.getElementById('code_markdown');
  if (codeInput == null || codeMarkdown == null) {
    return;
  }

  codeInput.addEventListener('input', () => {
    let HTML = `${codeInput.value}`;
    codeMarkdown.innerHTML = marked(HTML);
    var pre_code_nodes = document.querySelectorAll("pre code");
    for(var i = 0; i < pre_code_nodes.length; ++i){
      hljs.highlightBlock(pre_code_nodes[i]);
    }
  });
};

window.addEventListener("load", markdownCode);
