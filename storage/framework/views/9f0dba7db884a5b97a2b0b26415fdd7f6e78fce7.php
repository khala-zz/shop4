 
 <?php $__currentLoopData = $childs; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $child): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
 
    <li>
        <ul class="mb-20px">
            <li class="<?php echo e(count($child->children)?'mega-menu-title':''); ?>">
            	<a href="<?php echo e(route('category.product',['slug' => slugify($child -> title,'-'),'id' => $child -> id])); ?>"><?php echo e($child->title); ?></a>
            	<?php if(count($child->children)): ?>
		            <?php echo $__env->make('frontend.home.sub_category',['childs' => $child -> children], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
		       		
		        <?php endif; ?>
            </li>
        
        </ul>    
    </li>

<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

 <?php /**PATH C:\xampp\htdocs\shop3\resources\views/frontend/home/sub_category.blade.php ENDPATH**/ ?>