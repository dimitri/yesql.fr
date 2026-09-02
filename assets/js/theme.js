// Theme toggle. Dark is the default and needs no stored value; only an explicit
// choice is persisted, so a visitor who never touches the toggle keeps
// following their OS setting for light.
(function () {
  var root = document.documentElement;
  var btn = document.querySelector("[data-theme-toggle]");
  if (!btn) return;

  function effective() {
    var set = root.dataset.theme;
    if (set === "light" || set === "dark") return set;
    return window.matchMedia("(prefers-color-scheme: light)").matches ? "light" : "dark";
  }

  btn.addEventListener("click", function () {
    var next = effective() === "dark" ? "light" : "dark";
    root.dataset.theme = next;
    try { localStorage.setItem("yesql-theme", next); } catch (e) {}
  });
})();
