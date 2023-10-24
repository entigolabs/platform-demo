workspace {
    !identifiers hierarchical

    model {
        user = person "User" "Webapp user visiting the app with a browser or mobile client."

        stardust = softwareSystem "Stardust" "Web Application" "PHP" {
            php = container "PHP-FPM script runner" "PHP-FPM"
            nginx = container "Nginx frontend for serving static artefacts" "Nginx"

            stardust.nginx -> stardust.php "pass dynamic requests to php-fpm"
        }
        user -> stardust.nginx "use the app"


    }

    views {

        systemContext stardust "StardustSystem" {
            include *
            autoLayout
        }
        container stardust "StardustContainer" {
            include *
            autoLayout
        }

        theme "https://static.structurizr.com/themes/default/theme.json"
    }
}
