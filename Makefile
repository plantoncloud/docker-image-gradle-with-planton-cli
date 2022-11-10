docker_image_repo=us-central1-docker.pkg.dev/planton-shared-services-2w/planton-pcs-docker-repo-external
docker_image_path=gitlab.com/plantoncode/planton/oss/docker-images/gradle-with-planton-cli
docker_image_tag?=gradle-7-3-3-planton-cli-v0.0.15
docker_image=${docker_image_repo}/${docker_image_path}:${docker_image_tag}

.PHONY: build
build:
	docker build --platform linux/amd64 -t ${docker_image} .

.PHONY: release
release: build
	docker push ${docker_image}
