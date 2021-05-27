

const show_email = () => {
  console.log("js script \"show_email\" running");
  emailIcon = document.getElementById("email-icon");
  emailAddress = document.getElementById("my-email");
  emailIcon.addEventListener("toggle", () => {
    emailAddress.toggleAttribute("hidden");
  });

}



export { show_email }

