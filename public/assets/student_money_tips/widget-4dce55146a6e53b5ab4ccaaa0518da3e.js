(function(){window.Checkbox={toggle:function(e){var t;return event.preventDefault?event.preventDefault():event.returnValue=!1,t=e.getElementsByTagName("input")[0],t.checked?(t.checked=!1,e.className=""):(t.checked=!0,e.className="checked")},load:function(){var e,t,c,n,a;for(t=document.getElementsByTagName("input"),a=[],c=0,n=t.length;n>c;c++)e=t[c],"checkbox"===e.type&&e.checked?a.push(e.parentNode.className="checked"):a.push(void 0);return a}}}).call(this);