function subject() {
  const subject1 = document.getElementById("subject-choice1");
  const literature = document.getElementById("literature-choice");
  const subject2 = document.getElementById("subject-choice2");
  const mathematics = document.getElementById("mathematics-choice");
  const subject3 = document.getElementById("subject-choice3");
  const english = document.getElementById("english-choice");
  const subject4 = document.getElementById("subject-choice4");
  const science = document.getElementById("science-choice");
  const subject5 = document.getElementById("subject-choice4");
  const society = document.getElementById("society-choice");
  
  subject1.addEventListener("input", () => {
    if (subject1.id != 1) {
      literature.removeAttribute("hidden");
    } else {
      literature.setAttribute("hidden", true);
    }
  });
  
  subject2.addEventListener("input", () => {
    if (subject2.id != 1) {
      mathematics.removeAttribute("hidden");
    } else {
      mathematics.setAttribute("hidden", true);
    }
  });
  
  subject3.addEventListener("input", () => {
    if (subject3.id != 1) {
      english.removeAttribute("hidden");
    } else {
      english.setAttribute("hidden", true);
    }
  });
  
  subject4.addEventListener("input", () => {
    if (subject4.id != 1) {
      science.removeAttribute("hidden");
    } else {
      science.setAttribute("hidden", true);
    }
  });
  
  subject5.addEventListener("input", () => {
    if (subject5.id != 1) {
      society.removeAttribute("hidden");
    } else {
      society.setAttribute("hidden", true);
    }
  });
}

window.addEventListener("load", subject);