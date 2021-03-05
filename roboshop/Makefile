common:
	 @sh components/common.sh
frontend: common # This will make common execute first
	 @sh components/frontend.sh
mongo: common
	 @sh components/Mongo.sh
catalogue: common
	 @sh components/catalogue.sh
redis: common
	 @sh components/redis.sh
user: common
	 @sh components/user.sh
mysql: common
	 @sh components/mysql.sh
cart: common
	 @sh components/cart.sh
shipping: common
	 @ssh components/shipping.sh
rabbitmq: common
	 @ssh components/rabbitmq.sh
payment: common
	 @ssh components/payment.sh

