function getData(e) {
    e.preventDefault();

    var vote = document.getElementById("voteInput-" + e.target.dataset.productId).value;
    var productId = e.target.dataset.productId;
    var response = document.getElementById("response");

    fetch("localhost/UT6_SP1_RamírezLucesCésarMiguel/app/valorations.php", {
        method: "POST",
        headers: {
            "Content-Type": "application/x-www-form-urlencoded"
        },
        body: "vote=" + vote + "&productId=" + productId
    })
        .then(response => response.text())
        .then(data => {
            console.log(data);
        })
        .catch(error => {
            console.error(error);
        });
}