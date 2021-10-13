 
 <?php $__currentLoopData = $childs; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $index => $child): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>

   <?php if($item -> parent == null): ?>
        <li class="menu-item-has-children menu-item-has-children-<?php echo e($index + 2); ?>">
        
                <?php if(count($child -> children)): ?>
                    <a href="<?php echo e(route('category.product',['slug' => slugify($child -> title,'-'),'id' => $child -> id])); ?>" >
                       
                        <?php echo e($child->title); ?> <span class="toggle-btn"></span>
                    </a>
                <?php else: ?>
                     <a href="<?php echo e(route('category.product',['slug' => slugify($child -> title,'-'),'id' => $item -> id])); ?>" >
                       
                       <?php echo e($child->title); ?>

                    </a>
                <?php endif; ?>
            	
            	<?php if(count($child->children)): ?>

		            
		       		<ul class="category-mega-menu category-mega-menu-<?php echo e($index + 2); ?>">
                        <?php echo $__env->make('frontend.home.mobile_category',['childs' => $child -> children], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                    </ul>
		        <?php endif; ?>
            
     <?php endif; ?>   
           
    </li>

<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

 <?php /**PATH G:\laragon\www\shop3\resources\views/frontend/home/mobile_category.blade.php ENDPATH**/ ?>