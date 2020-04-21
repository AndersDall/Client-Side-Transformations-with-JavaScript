'use strict';

import {$} from './modules/nQuery.js';
import {getFileAjax} from './modules/Ajax.js';
import {getAndXSLT} from './modules/Ajax.js';

const getContent = async function(ev) {
    await getAndXSLT("http://localhost:3000/xml/lecturenotesM.xml",
                     "http://localhost:3000/xml/content.xsl",
                     "content",
                     ev.target.innerText);
};
const getHeaders = async function (ev) {
    await getAndXSLT("http://localhost:3000/xml/lecturenotesM.xml",
                     "http://localhost:3000/xml/headers.xsl",
                     "content",
                     ev.target.innerText);
    let btns = document.getElementsByClassName("butthead");
    for (let butt of btns) {
        butt.addEventListener("click", getContent);
    }
};
const getSubjects = async function () {
    await getAndXSLT("http://localhost:3000/xml/lecturenotesM.xml",
                     "http://localhost:3000/xml/subjects.xsl",
                     "navmenu",
                     "");
    let btns = document.getElementsByClassName("buttsub");
    for (let butt of btns) {
        butt.addEventListener("click", getHeaders);
    }
};

const init = function () {
    if ($('navmenu') && $('content')) {   // on the right page
        getSubjects();
    }
};

window.addEventListener('load', init);
