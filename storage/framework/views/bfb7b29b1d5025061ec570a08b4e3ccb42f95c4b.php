 
<?php $__currentLoopData = $childs; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $index => $child): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>

    <?php if($item -> parent == null): ?>
        <li >


           <a href="<?php echo e(route('category.product',['slug' => slugify($child -> title,'-'),'id' => $item -> id])); ?>" >

             <?php echo e($child->title); ?>

         </a>


         <?php if(count($child->children)): ?>


         <ul >
            <?php echo $__env->make('frontend.home.mobile_menu_category',['childs' => $child -> children], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
        </ul>
        <?php endif; ?>



    </li>
    <?php endif; ?>

<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

<?php /**PATH G:\laragon\www\shop3\resources\views/frontend/home/mobile_menu_category.blade.php ENDPATH**/ ?>