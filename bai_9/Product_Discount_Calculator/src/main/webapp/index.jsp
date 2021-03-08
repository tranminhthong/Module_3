<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Product Discount Calculator</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-md-3"></div>
        <div class="col-md-6">
            <form  action="/display-discount" method="post">
                <div class="form-group">
                    <input type="text" class="form-control" name="description" placeholder="Product Description">
                </div>
                <div class="form-group">
                    <input type="text" class="form-control" name="price" placeholder="List Price">
                </div>
                <div class="form-group">
                    <input type="text" class="form-control" name="percent" placeholder="Discount Percent">
                </div>
                <button type="submit" class="btn btn-primary">Submit</button>
            </form>
        </div>
        <div class="col-md-3"></div>
    </div>
</div>
</body>
</html>
