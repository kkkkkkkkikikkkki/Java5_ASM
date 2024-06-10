<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Student Registration</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous" />
  <style>
    body {
      background: #6a11cb;
      background: -webkit-linear-gradient(to right, rgba(106, 17, 203, 1), rgba(37, 117, 252, 1));
      background: linear-gradient(to right, rgba(106, 17, 203, 1), rgba(37, 117, 252, 1));
    }

    .container {
      max-width: 500px;
      margin: 0 auto;
      padding-top: 30px;

    }

    .card-title {
      font-size: 24px;
      font-weight: bold;
      margin-bottom: 20px;
      text-align: center;
      color: #ffffff;
    }

    .form-label {
      font-weight: bold;
      text-align: center;
      color: #ffffff;
    }

    .submit-btn {
      margin-top: 20px;
      display: flex;
      justify-content: center;
      align-items: center;
    }
  </style>
</head>
<body>
<div class="container">
  <div class="card bg-dark" >
    <div class="card-body">
      <h5 class="card-title">Sign Up</h5>
      <form>
        <div class="mb-3">
          <label for="userName" class="form-label">User Name</label>
          <input type="text" class="form-control" id="userName">
        </div>
        <div class="mb-3">
          <label for="password" class="form-label">Password</label>
          <input type="text" class="form-control" id="password">
        </div>
        <div class="mb-3">
          <label for="fullname" class="form-label">FullName</label>
          <input type="text" class="form-control" id="fullname">
        </div>
        <div class="mb-3">
          <label for="email" class="form-label">Email</label>
          <input type="text" class="form-control" id="email">
        </div>
        <div class="mb-3">
          <label for="phoneNumber" class="form-label">Phone Number</label>
          <input type="text" class="form-control" id="phoneNumber">
        </div>
        <div class="mb-3">
          <label for="activated" class="form-label">Activated</label>
          <select id="activated">
            <option value="yes">Yes</option>
            <option value="no" >No</option>
          </select>
        </div>


        <button type="submit" class="btn btn-primary submit-btn">Submit</button>
      </form>
    </div>
  </div>
</div>
</body>
</html>