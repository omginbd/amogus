// If you want to use Phoenix channels, run `mix help phx.gen.channel`
// to get started and then uncomment the line below.
// import "./user_socket.js"

// You can include dependencies in two ways.
//
// The simplest option is to put them in assets/vendor and
// import them using relative paths:
//
//     import "../vendor/some-package.js"
//
// Alternatively, you can `npm install some-package --prefix assets` and import
// them using a path starting with the package name:
//
//     import "some-package"
//

// Include phoenix_html to handle method=PUT/DELETE in forms and buttons.
import "phoenix_html"
// Establish Phoenix Socket and LiveView configuration.
import {Socket} from "phoenix"
import {LiveSocket} from "phoenix_live_view"
import topbar from "../vendor/topbar"

let csrfToken = document.querySelector("meta[name='csrf-token']").getAttribute("content")
let liveSocket = new LiveSocket("/live", Socket, {params: {_csrf_token: csrfToken}})
// let wakeLock

// const getwakelock = () => {
//   document.querySelector("#debug").innerHTML += "<p>Acquiring wakelock</p>"
//   if (wakeLock !== null) {
//     if ('wakeLock' in navigator) {
//       navigator.wakeLock.request("screen").then(lock => {
//         document.querySelector("#debug").innerHTML += "<p>we got it baby</p>"
//         console.log(lock)
//         wakeLock = lock
//         wakeLock.addEventListener("release", () => {
//           // the wake lock has been released
//           document.querySelector("#debug").innerHTML += "<p>wake lock released</p>"
//         });
//       }).catch(err => {
//           document.querySelector("#debug").innerHTML += "<p>" + err + "</p>"
//         })
//     } else {
//       document.querySelector("#debug").innerHTML += "<p>wakelock not supported</p>"
//     }
//   } else {
//     document.querySelector("#debug").innerHTML += "<p>already wakelocked</p>"
//   }
// }

window.addEventListener("phx:report", (event) => {
  document.querySelector("#report-audio").play()
});
window.addEventListener("phx:emergency", (event) => {
  document.querySelector("#emergency-audio").play()
});

// document.addEventListener("visibilitychange", async () => {
//   if(document.visibilityState === "visible") {
//     getwakelock()
//   }
// });


// Show progress bar on live navigation and form submits
topbar.config({barColors: {0: "#29d"}, shadowColor: "rgba(0, 0, 0, .3)"})
window.addEventListener("phx:page-loading-start", _info => topbar.show(300))
window.addEventListener("phx:page-loading-stop", _info => topbar.hide())

// connect if there are any LiveViews on the page
liveSocket.connect()

// expose liveSocket on window for web console debug logs and latency simulation:
// >> liveSocket.enableDebug()
// >> liveSocket.enableLatencySim(1000)  // enabled for duration of browser session
// >> liveSocket.disableLatencySim()
window.liveSocket = liveSocket
