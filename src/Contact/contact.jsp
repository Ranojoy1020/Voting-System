<!DOCTYPE html>
<html>
<head>
    <title>Contact Us - College Voting System</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
    <header>
        <h1>Contact Us</h1>
    </header>

    <nav>
        <!-- You can include navigation links here if needed -->
    </nav>

    <main>
        <section id="contact-info">
            <h2>Contact Information</h2>
            <p>If you have any questions or need assistance, please feel free to contact us using the information below:</p>
            <address>
                <p><strong>College Voting System Office</strong></p>
                <p>123 College Street</p>
                <p>City, State ZIP Code</p>
                <p>Email: <a href="mailto:contact@collegevotingsystem.com">contact@collegevotingsystem.com</a></p>
                <p>Phone: (123) 456-7890</p>
            </address>
        </section>

        <section id="contact-form">
            <h2>Contact Form</h2>
            <p>You can also reach out to us using the form below:</p>
            <form action="process_contact.php" method="post">
                <label for="name">Name:</label>
                <input type="text" id="name" name="name" required>

                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required>

                <label for="message">Message:</label>
                <textarea id="message" name="message" rows="4" required></textarea>

                <input type="submit" value="Submit">
            </form>
        </section>
    </main>

    <footer>
        <p>&copy; 2023 College Voting System. All rights reserved.</p>
    </footer>
</body>
</html>
