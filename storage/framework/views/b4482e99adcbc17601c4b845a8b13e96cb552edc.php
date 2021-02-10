<?php $__env->startSection('links'); ?>
    <a class="navbar-brand" href="/add">Add a Student</a>
    <a class="navbar-brand" href="/payfee">Pay Fees</a>
    <a class="navbar-brand" href="/payments">Payment History</a>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>
    <br>
    <div class="container">
        <div class="jumbotron">

            <h3>Results for <?php echo e($student->fullName); ?></h3>
            <h4>Student Number - <?php echo e($student->id); ?></h4>
            <h5>Fees Balance = <strong><?php echo e($student->Balance); ?></strong></h5>
        </div>

        <div class="container">
            <h3>Enter amount to be paid</h3>

            <form action="/paid/finished" method="post" class="form-horizontal">
                <?php echo e(csrf_field()); ?>

                <div class="form-group">
                    <div class="col-sm-5">
                        <input required type="number" class="form-control" name="amount" placeholder="Amount to be paid">
                    </div>
                </div>
                <input readonly type="hidden" name="student_id" value="<?php echo e($student->id); ?>">
                

                <div class="form-group">
                    <div class="col-sm-5">
                        <input type="submit" class="form-control btn btn-success" value="Submit Fees">
                    </div>
                </div>
                </form>
        </div>
    </div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('101054.home', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>