    <?php
    $url_host = $_SERVER['HTTP_HOST'];

    $pattern_document_root = addcslashes(realpath($_SERVER['DOCUMENT_ROOT']), '\\');

    $pattern_uri = '/' . $pattern_document_root . '(.*)$/';

    preg_match_all($pattern_uri, __DIR__, $matches);

    $url_path = $url_host . $matches[1][0];

    $url_path = str_replace('\\', '/', $url_path);
    ?>

         <!--banner-->
        <div class="m3">
            <div class="m3-container">
                <div class="m3-content">
                      <!--Menu -->
                    <div class="col-xs-12 col-sm-12 col-md-12 m3-content-menu">
                        <span class="m3-content-menu-icon"></span>
                        <h3>Menu</h3>
                        <h5>Today Specials</h5>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-4 m3-content-menu">
                        <!--Breakfast -->
                        <div class="m3-content-menu-food">
                            <h2>Breakfast</h2>
                        </div>
                        <div class="m3-content-menu-food">
                            <h3>Antioxidant Fruits Mix<span class="price">$8</span></h3>
                            <div class="m3-content-menu-food-description"></div>
                        </div>
                        <div class="m3-content-menu-food">
                            <h3>Blueberry banana pancakes<span class="price">$5</span></h3>
                            <div class="m3-content-menu-food-description">Banana, almond milk, vanilla, cinnamon, blueberry topping</div>
                        </div>
                        <div class="m3-content-menu-food">
                            <h3>Fig and lemon cake
                                <span class="price">$7</span></h3>
                                <div class="m3-content-menu-food-description"></div>
                        </div>
                        <div class="m3-content-menu-food">
                            <h3>Pain au chocolat
                                <span class="price">$4</span></h3>
                                <div class="m3-content-menu-food-description">Beautiful homemade croissants, each containing a bar of high-quality dark chocolate, make for an impressive and indulgent addition to ...</div>
                        </div>
                        <div class="m3-content-menu-food">
                            <h3>Sun-Dried Tomato Bruschetta
                                <span class="price">$7</span></h3>
                                <div class="m3-content-menu-food-description"></div>
                        </div>
                        <div class="m3-content-menu-food">
                            <h3>Traditional pancakes with maple syrup butter & berry jam
                                <span class="price">$5</span></h3>
                                <div class="m3-content-menu-food-description">Milk, eggs, strawberries, butter, maple syrup</div>
                        </div>

                        <!--Brunch -->
                        <div class="m3-content-menu-food">
                            <h2>Brunch</h2>
                        </div>
                        <div class="m3-content-menu-food">
                            <h3>American Brunch Combo Menu<span class="price">$15</span></h3>
                            <div class="m3-content-menu-food-description">Freshly scrambled eggs with applewood smoked bacon, tomatoes, green onions and cheddar cheese.</div>
                        </div>
                        <div class="m3-content-menu-food">
                            <h3>Blueberry banana pancakes<span class="price">$5</span></h3>
                            <div class="m3-content-menu-food-description">Banana, almond milk, vanilla, cinnamon, blueberry topping</div>
                        </div>
                         <div class="m3-content-menu-food">
                            <h3>Cashew Chicken With Stir-Fry Vegetables &amp; Green Salad<span class="price">$22</span></h3>
                            <div class="m3-content-menu-food-description">Cashew Chicken With Stir-Fry Vegetables served with green salad, sprouts and stewed mushrooms.</div>
                        </div>
                        <div class="m3-content-menu-food">
                            <h3>Coffee and Pain au chocolat (Chocolate croissant) Combo Menu
                                <span class="price">$11</span></h3>
                                <div class="m3-content-menu-food-description">Hot coffee in the company of Beautiful homemade croissants, each containing a bar of high-quality dark chocolate, make for ...</div>
                        </div>
                        <div class="m3-content-menu-food">
                            <h3>Optic Big Breakfast Combo Menu<span class="price">$20</span></h3>
                            <div class="m3-content-menu-food-description"></div>
                        </div>
                        <div class="m3-content-menu-food">
                            <h3>Optic Big Salad Combo<span class="price">$20</span></h3>
                            <div class="m3-content-menu-food-description"></div>
                        </div>
                         <div class="m3-content-menu-food">
                            <h3>Pain au chocolat<span class="price">$4</span></h3>
                            <div class="m3-content-menu-food-description">Beautiful homemade croissants, each containing a bar of high-quality dark chocolate, make for an impressive and indulgent addition to ...</div>
                        </div>
                         <div class="m3-content-menu-food">
                            <h3>Salad With Vegetables<span class="price">$22</span></h3>
                            <div class="m3-content-menu-food-description">Cashew Chicken With Stir-Fry Vegetables served with green salad, sprouts and stewed mushrooms.</div>
                        </div>
                        <div class="m3-content-menu-food">
                            <h3>Traditional pancakes with maple syrup butter &amp; berry jam<span class="price">$5</span></h3>
                            <div class="m3-content-menu-food-description">Milk, eggs, strawberries, butter, maple syrup</div>
                        </div>
 
                    </div>
                         
                    
                    <div class="col-xs-12 col-sm-12 col-md-4 m3-content-menu">
                        <!--Dinner - 1 -->
                        <div class="m3-content-menu-food">
                            <h2>Dinner</h2>
                        </div>
                        <div class="m3-content-menu-food">
                            <h3>Alder Grilled Chinook Salmon<span class="price">$33</span></h3>
                            <div class="m3-content-menu-food-description">Candied salmon, basil potato puree, baby kale marsala eggplant confit & balsamic butter sauce.</div>
                        </div>
                        <div class="m3-content-menu-food">
                            <h3>Alder grilled seafood paella<span class="price">$37</span></h3>
                            <div class="m3-content-menu-food-description">Shell-on king prawns, monkfish, onion, paella rice, garlic, smoked paprika, cayenne pepper (optional), saffron, tomatoes, mussels, peas, broad beans, ...</div>
                        </div>
                        <div class="m3-content-menu-food">
                            <h3>Asian chicken & vegetable stir fry
                                <span class="price">$41</span></h3>
                                <div class="m3-content-menu-food-description">Chicken breast, cornstarch, soy sauce, garlic, minced, potatoes, onion, bell pepper, carrot, green beans (aka Baguio beans)</div>
                        </div>
                        <div class="m3-content-menu-food">
                            <h3>Creamy smoked salmon, leek & potato soup
                                <span class="price">$9.50</span></h3>
                                <div class="m3-content-menu-food-description">Served in deep bowls with smoked salmon and snipped chives on the top.</div>
                        </div>
                        <div class="m3-content-menu-food">
                            <h3>Head on prawns, manila clams & mussels
                                <span class="price">$39</span></h3>
                                <div class="m3-content-menu-food-description">These small shellfish have a sweet flavour and a firm texture.</div>
                        </div>
                        <div class="m3-content-menu-food">
                            <h3>Lamb Chops Sizzled with Garlic
                                <span class="price">$45</span></h3>
                                <div class="m3-content-menu-food-description"></div>
                        </div>
                        <div class="m3-content-menu-food">
                            <h3>Salad With Vegetables
                                <span class="price">$22</span></h3>
                                <div class="m3-content-menu-food-description">Cashew Chicken With Stir-Fry Vegetables served with green salad, sprouts and stewed mushrooms.</div>
                        </div>
                        <div class="m3-content-menu-food">
                            <h3>Smoked Paprika Hummus
                                <span class="price">$19</span></h3>
                                <div class="m3-content-menu-food-description">Optional garnishes: roasted red bell peppers, roasted garlic, lemon slices, olives, mint or parsley sprigs</div>
                        </div>
                        <div class="m3-content-menu-food">
                            <h3>Spicy Vegan Potato Curry
                                <span class="price">$28</span></h3>
                                <div class="m3-content-menu-food-description">Onion, garlic, turmeric, cumin, coriander, tomato, potato, carrot, red pepper, chili, coconut milk.</div>
                        </div>


                         <!--Lunch -->
                        <div class="m3-content-menu-food">
                            <h2>Lunch</h2>
                        </div>
                        <div class="m3-content-menu-food">
                            <h3>Alder Grilled Chinook Salmon<span class="price">$33</span></h3>
                            <div class="m3-content-menu-food-description">Candied salmon, basil potato puree, baby kale marsala eggplant confit & balsamic butter sauce.</div>
                        </div>
                        <div class="m3-content-menu-food">
                            <h3>Alder grilled seafood paella<span class="price">$37</span></h3>
                            <div class="m3-content-menu-food-description">Shell-on king prawns, monkfish, onion, paella rice, garlic, smoked paprika, cayenne pepper (optional), saffron, tomatoes, mussels, peas, broad beans, ...</div>
                        </div>
                        <div class="m3-content-menu-food">
                            <h3>Asian chicken & vegetable stir fry
                                <span class="price">$41</span></h3>
                                <div class="m3-content-menu-food-description">Chicken breast, cornstarch, soy sauce, garlic, minced, potatoes, onion, bell pepper, carrot, green beans (aka Baguio beans)</div>
                        </div>
                        <div class="m3-content-menu-food">
                            <h3>Creamy smoked salmon, leek &amp; potato soup
                                <span class="price">$9.50</span></h3>
                                <div class="m3-content-menu-food-description">Served in deep bowls with smoked salmon and snipped chives on the top.</div>
                        </div>
                        <div class="m3-content-menu-food">
                            <h3>Head on prawns, manila clams & mussels
                                <span class="price">$39</span></h3>
                                <div class="m3-content-menu-food-description">These small shellfish have a sweet flavour and a firm texture.</div>
                        </div>
                        <div class="m3-content-menu-food">
                            <h3>Lamb Chops Sizzled with Garlic
                                <span class="price">$45</span></h3>
                                <div class="m3-content-menu-food-description"></div>
                        </div>
                        <div class="m3-content-menu-food">
                            <h3>Smoked Paprika Hummus
                                <span class="price">$19</span></h3>
                                <div class="m3-content-menu-food-description">Optional garnishes: roasted red bell peppers, roasted garlic, lemon slices, olives, mint or parsley sprigs</div>
                        </div>
                        <div class="m3-content-menu-food">
                            <h3>Spicy Vegan Potato Curry
                                <span class="price">$28</span></h3>
                                <div class="m3-content-menu-food-description">Onion, garlic, turmeric, cumin, coriander, tomato, potato, carrot, red pepper, chili, coconut milk.</div>
                        </div>

                    </div>

                         
                    
                    <div class="col-xs-12 col-sm-12 col-md-4 m3-content-menu">
                         <!--Dessert -->
                        <div class="m3-content-menu-food">
                            <h2>Dessert</h2>
                        </div>
                        <div class="m3-content-menu-food">
                            <h3>Antioxidant Fruits Mix<span class="price">$8</span></h3>
                            <div class="m3-content-menu-food-description"></div>
                        </div>
                         <div class="m3-content-menu-food">
                            <h3>Berries and creme tart
                                <span class="price">$7</span></h3>
                                <div class="m3-content-menu-food-description">Butter crust, vanilla pudding with heavy cream, topping with fresh raspberries, blueberries, cranberry.</div>
                        </div>
                        <div class="m3-content-menu-food">
                            <h3>Blueberry banana pancakes<span class="price">$5</span></h3>
                            <div class="m3-content-menu-food-description">Banana, almond milk, vanilla, cinnamon, blueberry topping</div>
                        </div>
                        <div class="m3-content-menu-food">
                            <h3>Blueberry Sweet Rolls with Lemon Glaze<span class="price">$7</span></h3>
                            <div class="m3-content-menu-food-description">Butter, blueberries, lemon, heavy cream - an irresistible sweet-sour combination of tastes.</div>
                        </div>
                        <div class="m3-content-menu-food">
                            <h3>Chocolate Cherry Cake with Meringue Butter Cream<span class="price">$8</span></h3>
                            <div class="m3-content-menu-food-description">Vanilla, milk, dark chocolate, cherries, eggs, butter</div>
                        </div>
                        <div class="m3-content-menu-food">
                            <h3>Classic Blueberry Pie<span class="price">$6</span></h3>
                            <div class="m3-content-menu-food-description">Pastry, cinnamon, blueberries, lemon juice</div>
                        </div>
                        <div class="m3-content-menu-food">
                            <h3>Creamy mascarpone cake with passion fruit sauce<span class="price">$8</span></h3>
                            <div class="m3-content-menu-food-description"></div>
                        </div>
                        <div class="m3-content-menu-food">
                            <h3>Fig and lemon cake<span class="price">$7</span></h3>
                            <div class="m3-content-menu-food-description"></div>
                        </div>
                         <div class="m3-content-menu-food">
                            <h3>Traditional pancakes with maple syrup butter &amp; berry jam<span class="price">$5</span></h3>
                            <div class="m3-content-menu-food-description">Milk, eggs, strawberries, butter, maple syrup</div>
                        </div>

                         <!--Drinks -->
                        <div class="m3-content-menu-food">
                            <h2>Drinks</h2>
                        </div>
                        <div class="m3-content-menu-food">
                            <h3>Aperol Spritz<span class="price">$7.90</span></h3>
                            <div class="m3-content-menu-food-description">Ice and slice of orange, prosecco, aperol, soda</div>
                        </div>
                        <div class="m3-content-menu-food">
                            <h3>Caffe Latte<span class="price">$5.90</span></h3>
                            <div class="m3-content-menu-food-description">A Latte is a coffee drink made with espresso and steamed milk.</div>
                        </div>
                        <div class="m3-content-menu-food">
                            <h3>Caffè macchiato
                                <span class="price">$5.90</span></h3>
                                <div class="m3-content-menu-food-description">An espresso coffee drink with a small amount of milk, usually foamed.</div>
                        </div>
                        <div class="m3-content-menu-food">
                            <h3>Campari
                                <span class="price">$6.90</span></h3>
                                <div class="m3-content-menu-food-description">Campari's bracing bitterness and lush grapefruit notes are refreshing when mixed simply with soda, drunk before dinner to awaken ...</div>
                        </div>
                        <div class="m3-content-menu-food">
                            <h3>Cappuccino
                                <span class="price">$5.90</span></h3>
                                <div class="m3-content-menu-food-description">A cappuccino is an Italian coffee drink that is traditionally prepared with espresso, hot milk, and steamed milk foam.</div>
                        </div>
                        <div class="m3-content-menu-food">
                            <h3>Stoneburn Pinot Noir 2013, Marlborough, New Zealand
                                <span class="price">$13.90</span></h3>
                                <div class="m3-content-menu-food-description">Wonderful flavours of soft plums and raspberry, it has the depth and body to satisfy any Pinot Noir lover.</div>
                        </div>
                         <div class="m3-content-menu-food">
                            <h3>Tormentoso Bush Vine Pintoage
                                <span class="price">$11.90</span></h3>
                                <div class="m3-content-menu-food-description">Ruby centre with a bright rim, this wine has typical Pinotage aromas of black cherries. On the palate, you’ll ...</div>
                        </div>

                    </div>
                          
                        
                        <div class="clearfix"></div>
                    </div>
                    <div class="m3-parallax">
                        <div class="m3-background"> </div>
                    </div>
                </div>
            </div>    
        
