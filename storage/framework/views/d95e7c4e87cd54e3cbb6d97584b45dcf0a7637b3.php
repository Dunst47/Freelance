<?php $__env->startSection('links'); ?>
    <a class="navbar-brand" href="/add">Add a Student</a>
    <a class="navbar-brand" href="/payfee/">Pay Fees</a>
    <a class="navbar-brand" href="/payments">Payment History</a>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>
    <br>
    <div class="container">
        <div class="jumbotron">
            <h3>Search Payments by Student number</h3>
            <form class="form-horizontal" method="get" action="/payments/results">
                <div class="form-group">
                    <div class="col-sm-5">
                        <input required type="number" class="form-control" name="id" placeholder="Search Student number">
                    </div>
                </div>
                <div class="form-group">
                    <div class=" col-sm-5">
                        <input type="submit" class="btn btn-default" value="Search Student">
                    </div>
                </div>
            </form>

        </div>
    </div>

<?php $__env->stopSection(); ?>

<?php echo $__env->make('95607.master', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>