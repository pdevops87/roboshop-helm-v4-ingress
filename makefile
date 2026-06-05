install:
	git pull
	helm upgrade -i frontend . -f pass-to-templates/frontend.yaml
	helm upgrade -i catalogue . -f pass-to-templates/catalogue.yaml
	helm upgrade -i cart . -f pass-to-templates/cart.yaml
	helm upgrade -i user . -f pass-to-templates/user.yaml
	helm upgrade -i shipping . -f pass-to-templates/shipping.yaml
	helm upgrade -i payment . -f pass-to-templates/payment.yaml


uninstall:
    helm uninstall frontend
    helm uninstall catalogue
    helm uninstall cart
    helm uninstall user
    helm uninstall shipping
    helm uninstall payment