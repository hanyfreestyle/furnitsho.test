<?php

namespace Database\Seeders;


use App\AppCore\AdminRole\Seeder\PermissionSeeder;
use App\AppCore\AdminRole\Seeder\AdminUserSeeder;
use App\AppCore\AdminRole\Seeder\RoleSeeder;
use App\AppCore\AdminRole\Seeder\UsersTableSeeder;
use App\AppCore\WebSettings\Seeder\SettingsTableSeeder;
use App\AppCore\DefPhoto\DefPhotoSeeder;
use App\AppCore\UploadFilter\Seeder\UploadFilterSeeder;
use App\AppCore\Menu\AdminMenuSeeder;
use App\AppPlugin\Config\Meta\SeederMetaTag;
use App\AppPlugin\Config\Privacy\SeederWebPrivacy;
use App\AppPlugin\Data\ConfigData\Seeder\ConfigDataSeeder;
use App\AppPlugin\Data\Country\SeederCountry;
use App\AppPlugin\Data\City\Seeder\CitySeeder;
use App\AppPlugin\Leads\ContactUs\SeederContactUsForm;
use App\AppPlugin\Leads\NewsLetter\SeederNewsLetter;
use App\AppPlugin\BlogPost\Seeder\BlogCategorySeeder;
use App\AppPlugin\Pages\Seeder\PageSeeder;
use App\AppPlugin\Product\Seeder\ProductCategoriesSeeder;
use App\AppPlugin\Product\Seeder\ProductSeeder;
use App\AppPlugin\Customers\Seeder\UsersCustomersSeeder;
use App\AppPlugin\Orders\Seeder\OrdersSeeder;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\File;

class DatabaseSeeder extends Seeder {

    public function run(): void {

        $this->call(PermissionSeeder::class);
        $this->call(AdminUserSeeder::class);
        $this->call(RoleSeeder::class);
        $this->call(UsersTableSeeder::class);

        $this->call(SettingsTableSeeder::class);
        $this->call(DefPhotoSeeder::class);
        $this->call(UploadFilterSeeder::class);
        $this->call(AdminMenuSeeder::class);

        if (File::isFile(base_path('routes/AppPlugin/config/configMeta.php'))) {
            $this->call(SeederMetaTag::class);
        }

        if (File::isFile(base_path('routes/AppPlugin/config/webPrivacy.php'))) {
            $this->call(SeederWebPrivacy::class);
        }

        if (File::isFile(base_path('routes/AppPlugin/data/configData.php'))) {
            $this->call(ConfigDataSeeder::class);
        }

        if (File::isFile(base_path('routes/AppPlugin/data/country.php'))) {
            $this->call(SeederCountry::class);
        }

        if (File::isFile(base_path('routes/AppPlugin/data/city.php'))) {
            $this->call(CitySeeder::class);
        }

        if (File::isFile(base_path('routes/AppPlugin/leads/newsLetter.php'))) {
            $this->call(SeederNewsLetter::class);
        }

        if (File::isFile(base_path('routes/AppPlugin/leads/contactUs.php'))) {
            $this->call(SeederContactUsForm::class);
        }

        if (File::isFile(base_path('routes/AppPlugin/blogPost.php'))) {
            $this->call(BlogCategorySeeder::class);
        }

        if (File::isFile(base_path('routes/AppPlugin/pages.php'))) {
            $this->call(PageSeeder::class);
        }

        if (File::isFile(base_path('routes/AppPlugin/proProduct.php'))) {
            $this->call(ProductCategoriesSeeder::class);
            $this->call(ProductSeeder::class);
        }

        if (File::isFile(base_path('routes/AppPlugin/customer.php'))) {
            $this->call(UsersCustomersSeeder::class);
        }

        if (File::isFile(base_path('routes/AppPlugin/orders.php'))) {
            $this->call(OrdersSeeder::class);
        }

    }
}
