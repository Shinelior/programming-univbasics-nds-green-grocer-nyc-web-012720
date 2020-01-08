require "pry"
def find_item_by_name_in_collection(name, collection)
  #new_hash={}
  
  row_index=0 
  while  row_index<collection.length do
    new_name=collection[row_index][:item]
  
    #puts new_name
    #puts name
    if  new_name!=name
       nil
    else 
       return collection[row_index]
    
    end 
    row_index += 1 
  end

  
end  
  
  
  # Implement me first!
  #
  # Consult README for inputs and outputs


def consolidate_cart(cart)
 
 new_array = [] 
 row_index= 0 
  
 while  row_index<cart.length  do 

    item_name = cart[row_index][:item]
   #price_item = cart[row_index][:price]
      
    new_item = find_item_by_name_in_collection(item_name, new_array)

     if new_item 
       
     new_item[:count] += 1 
     
   else
     cart[row_index][:count] = 1
       #binding.pry
      new_array << cart[row_index]
 end
  row_index += 1




end

return new_array

  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
end

def apply_coupons(cart, coupons)
   
  row_index=0 
  
  
  
  while row_index < coupons.length do 
   cart_item = find_item_by_name_in_collection(coupons[row_index][:item],cart) 
   coupons_item_name = "#{coupons[row_index][:item]}W/COUPON"
 cart_item_with_coupon = find_item_by_name_in_collection(coupons_item_name,cart)
 if cart_item &&cart_item[:count] >= coupons[row_index][:num]
   
   if  cart_item_with_coupon 
     cart_item_with_coupon[:count] += coupons[row_index][:num]
     
     cart_item[:count] -= coupons[row_index][:num]
   else 
     cart_item_with_coupon = {:item => coupons_item_name,:price => coupons[row_index][:cost]/coupons[row_index][:num],:count => coupons[row_index][:num],:clearance => cart_item[:clearance]} 
     cart << cart_item_with_coupon 
      cart_item[:count] -= coupons[row_index][:num]
     end
     
     
     
   end
   row_index += 1
 end
  cart
end
    
    
    
    
    
    
    
    
    
  # item_clearance = cart[row_index][:clearance]
     # item_price = cart[row_index][:price]
  # item_name = cart[row_index][:item] 
  #coupion_item_name = coupons[row_index][:item]
  #full_coupion_item_name = coupion_item_name + coup
  
  #cupion_price_item = coupons[row_index][:cost]
  #numbercupions_same_item = coupons[row_index][:num]
  
  #coupon_ave_price = (cupion_price_item)/(numbercupions_same_item.to_f)
  #coupon_ave_price=coupon_ave_price.to_f
  
  
  

          #match_cart[:num] = numberof_same_item 
           #match_cart[:price] = coupon_ave_price
          # match_cart[:item] = full_coupion_item_name  
           # new_array << match_cart
           
        #else  
         # match_cart[:num] = numbercupions_same_item
         # match_cart[:price] =  coupon_ave_price 
         # match_cart[:item] = full_coupion_item_name  
          
     #item_less_itemwithcoupion = numberof_same_item - numbercupions_same_item
    #cart[row_index][:count] = item_less_itemwithcoupion 
     #new_array << match_cart 
     #new_array << cart[row_index]
     
   #end
 #else
 
    #match_cart={}
   #consolidate_cart=[]
  # match_cart[:item] = item_name 
   #match_cart[:price] = item_price
   # match_cart[:clearance] = item_clearance
   # match_cart[:count] = 
   # new_array << match_cart
  #consolidate_cart = consolidate_cart(new_array)
  # match_coupion =  find_item_by_name_in_collection(coupion_item_name,consolidate_cart)
  
   
  # numberof_same_item = match_coupion[:count]
 # if numbercupions_same_item >= numberof_same_item
   
   #match_coupion[:price] =  coupon_ave_price
   #match_coupion[:item] = full_coupion_item_name
  # match_coupion[:clearance] = item_clearance
  
# else
  #item_less_itemwithcoupion = numberof_same_item - numbercupions_same_item 
  
   # match_coupion[:price] =  coupon_ave_price
   # match_coupion[:item] = full_coupion_item_name
    #match_coupion[:count] = numbercupions_same_item
  # cart[row_index][:count] = item_less_itemwithcoupion
    
   #
#end 
 
 #end
 #consolidate_cart << match_coupion

#row_index += 1 
 
 
# end 
 #return consolidate_cart
#binding.pry
 
     
     
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
#end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
