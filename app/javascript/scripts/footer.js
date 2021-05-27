

const show_email = () => {
  console.log("js script \"show_email\" running");
  const emailAddress = document.getElementById("my-email");
  const emailIcon = document.getElementById("email-icon");
  emailIcon.addEventListener("click", () => {
    console.log("click");
    emailAddress.classList.toggle("hidden");
  });
}

const hover_email = () => {
  const emailIcon = document.getElementById("email-icon");
  const emailAddress = document.getElementById("my-email");
  const actualEmail = document.getElementById("email-address");
  emailIcon.addEventListener("mouseover", ()=>{
    console.log("hover");
    emailAddress.classList.remove("hidden");
  });

}



export { show_email, hover_email}

