
document.addEventListener("DOMContentLoaded", function() {
    document.getElementById("limpiarBtn").addEventListener("click", function() {
        var checkboxes = document.querySelectorAll('input[type="checkbox"]');
        checkboxes.forEach(function(checkbox) {
            checkbox.checked = false;
        });
    });
});

