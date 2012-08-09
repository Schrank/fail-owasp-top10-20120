<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);
mysql_connect('localhost', 'fail', '8GvK8BbH7eNydLwn');
mysql_select_db('fail');
if (isset($_GET['nickname'])) {
    $query = 'SELECT * FROM products WHERE name LIKE \'%' . $_GET['nickname'] . '%\';';
    $res = mysql_query($query);
}
?>
<!doctype html>
<html lang=en>
<head>
    <meta charset=utf-8>
    <title>blah</title>
</head>
<body>
<form action="<?= str_replace(' ', '%20', $_SERVER['SCRIPT_NAME']); ?>" method="get">
    <input type="text" name="nickname"/>
    <input type="submit"/>
    <p>Good Searchstring:</p>
    <pre>Shirt</pre>
    <p>Bad Searchstring:</p>
    <pre>asdfagsdfasdfasdfasdf' UNION SELECT email as name, password as price,  email as price2,  email as price3 FROM users WHERE user LIKE '</pre>
</form>
<?php if (isset($res)): ?>
    <?php while ($row = mysql_fetch_assoc($res)): ?>
    <h1><?= $row['name'] ?></h1>
        <p>Price: <?= $row['price'] ?>€</p>
        <?php endwhile; ?>
    <?php endif; ?>
</body>
</html>