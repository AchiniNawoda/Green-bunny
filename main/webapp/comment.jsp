<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0">
    <title>Green Bunny</Form></title>
    <link rel="stylesheet" href="css/commentstyle.css">
    <link rel="stylesheet" href="https:unpkg.com/boxicons@2.1.1/css/boxicons.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
</head>
<body>
    <div class="container">
        <form action="#">
            <h1>Comments</h1>
            <input type="text" name="full_name" placeholder="Full Name...">
            <input type="email" name="email" placeholder="Email Address...">
            <textarea name="comment" placeholder="Type Your Comment..."></textarea>
            <div class="star-widget">
                <input type="radio" name="rate" id="rate-5" hidden>
                <label for="rate-5">&#9733;</label>
                <input type="radio" name="rate" id="rate-4" hidden>
                <label for="rate-4">&#9733;</label>
                <input type="radio" name="rate" id="rate-3" hidden>
                <label for="rate-3">&#9733;</label>
                <input type="radio" name="rate" id="rate-2" hidden>
                <label for="rate-2">&#9733;</label>
                <input type="radio" name="rate" id="rate-1" hidden>
                <label for="rate-1">&#9733;</label>
                <header></header>
            </div>
            <button type="submit" onclick="openPopup()">Submit Comment</button>
        </form>
        <div class="popup" id="popup">
            <img src="tick.png">
            <h3>Thank You!</h3>
            <button type="button" onclick="closePopup()">OK</button>
        </div>
    </div>
    <script src="js/cscript.js"></script>
</body>
</html>