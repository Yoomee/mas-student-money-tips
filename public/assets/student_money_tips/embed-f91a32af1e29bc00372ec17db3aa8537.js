function handleMASResizeMessage(e){if("string"==typeof e.data){var t=e.data.split("-"),s=t[0],a=parseInt(t[1]);if("MASRESIZE"===s){var n=document.getElementById("student_money_tips");a>n.height&&(n.height=a)}}}window.addEventListener?addEventListener("message",handleMASResizeMessage,!1):attachEvent("onmessage",handleMASResizeMessage);