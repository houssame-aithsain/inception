# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hait-hsa <hait-hsa@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/05/31 14:21:31 by hait-hsa            #+#    #+#              #
#    Updated: 2024/05/31 14:21:31 by hait-hsa           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = inception

all:
	@sudo mkdir /home/hait-hsa/data
	@sudo mkdir /home/hait-hsa/data/database
	@sudo mkdir /home/hait-hsa/data/web
	cd srcs && docker compose up --build

clean:
	@echo "containers has been removed."
	@cd srcs && docker compose down

fclean: clean
	@echo "erase all...."
	@sudo rm -rf /home/hait-hsa/data
	@docker volume rm -f srcs_database  srcs_web
	@docker  system  prune -af

re: fclean all

.PHONY: build all re clean fclean
