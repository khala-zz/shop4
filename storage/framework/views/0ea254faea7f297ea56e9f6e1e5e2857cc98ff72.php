 
 <?php $__currentLoopData = $childs; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $index => $child): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
 

    <li class="<?php echo e(count($child->children)?'mega-menu-title':''); ?>" >

        <a href="<?php echo e(route('category.product',['slug' => slugify($child -> title,'-'),'id' => $child -> id])); ?>" ><?php echo e($child->title); ?></a>
        
        <?php if(count($child -> children)): ?>
        <ul class="mb-20px menu-con-khala menu-khala-<?php echo e($index); ?>">

            
                <?php echo $__env->make('frontend.home.menu_category',['childs' => $child -> children], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
  
        </ul>  
        <?php endif; ?>
             
    </li>

<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

 <?php /**PATH G:\laragon\www\shop3\resources\views/frontend/home/menu_category.blade.php ENDPATH**/ ?>