document.addEventListener("DOMContentLoaded", () => {
    const forms = document.querySelectorAll(".vote-form");

    forms.forEach((form) => {
        const productId = form.dataset.productId;
        const stars = form.querySelectorAll(".rating i");
        const voteInput = form.querySelector(".vote-input");
        const userVoteCell = document.getElementById(`user-vote-${productId}`);
        const averageCell = document.getElementById(`average-${productId}`);

        let currentVote = 0;

        stars.forEach((star, index) => {
            star.addEventListener("mousemove", (event) => {
                highlightStars(stars, index + 1);
            });

            star.addEventListener("click", () => {
                currentVote = index + 1;
                voteInput.value = currentVote;
            });
        });

        form.addEventListener("mouseleave", () => {
            highlightStars(stars, currentVote);
        });

        form.addEventListener("submit", async (event) => {
            event.preventDefault();

            if (currentVote === 0) {
                alert("Por favor, selecciona una puntuación.");
                return;
            }

            const response = await fetch("vote.php", {
                method: "POST",
                headers: { "Content-Type": "application/json" },
                body: JSON.stringify({ vote: currentVote, productId })
            });

            const result = await response.json();

            if (result.error) {
                alert(result.error);
            } else {
                userVoteCell.textContent = result.userVote;
                averageCell.textContent = result.newAverage;
                form.innerHTML = "<p class='text-green-500 font-bold'>¡Gracias por votar!</p>";
            }
        });
    });

    function highlightStars(stars, value) {
        stars.forEach((star, index) => {
            star.style.color = index < value ? "#ffc107" : "#e4e5e9";
        });
    }
});
