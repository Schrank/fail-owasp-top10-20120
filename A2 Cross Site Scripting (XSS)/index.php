<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);
$db = new PDO('mysql:dbname=fail;host=127.0.0.1', 'fail', '8GvK8BbH7eNydLwn');
if (isset($_POST['text']) && isset($_POST['author'])) {
    $stmt = $db->prepare('INSERT INTO `guestbook` (`author`, `text`) VALUES (:author, :text);');
    $stmt->execute(
        array(
            ':text' => $_POST['text'],
            ':author' => $_POST['author']
        )
    );
}
$stmt = $db->query('SELECT * FROM guestbook');
?>
<!doctype html>
<html lang=en>
<head>
    <meta charset=utf-8>
    <title>A2 Cross Site Scripting (XSS)</title>
</head>
<body>
<form action="<?= str_replace(' ', '%20', $_SERVER['SCRIPT_NAME']); ?>" method="post">
    <input type="text" name="author"/><br />
    <textarea name="text"></textarea><br/>
    <input type="submit"/>
</form>
<div>
    <?php foreach ($stmt->fetchAll(PDO::FETCH_ASSOC) as $row): ?>
        <div>
            <h3><?php echo $row['author'] ?> (<?php echo date('d.m.Y H:i:s', strtotime($row['created_at'])); ?>)</h3>
            <h4>Unescaped</h4>
            <p><?php echo $row['text']; ?></p>
            <h4>Escaped</h4>
            <p><?php echo filter_var($row['text'], FILTER_SANITIZE_SPECIAL_CHARS); ?></p>
        </div>
    <?php endforeach; ?>
</div>
</body>
</html>
