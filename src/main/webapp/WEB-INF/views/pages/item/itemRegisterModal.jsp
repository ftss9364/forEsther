<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div class="modal fade" id="registerModal" tabindex="-1"
	style="display: none;" aria-hidden="true">
	<div class="modal-dialog modal-lg modal-dialog-centered" role="document">
		<form class="modal-content" action="/item/register" method="post">
			<header class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel3">품목등록</h5>
				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-label="Close"></button>
			</header>
			<hr />
			<section class="modal-body">
				<div class="row">
					<!-- 좌측 column -->
					<div class="col-md">
						<div class="mb-2">
							<div class="col-md">
								<label class="form-label">품목구분</label>
								<div class="form-radiobox-group">
									<div class="form-check mr-2">
										<input name="item-classification" class="form-check-input" type="radio" value="원재료" id="ingredient" checked />
										<label class="form-label" for="ingredient" >
											원재료
										</label>
									</div>
									<div class="form-check">
										<input name="item-classification" class="form-check-input" type="radio" value="제품" id="product" />
										<label class="form-label" for="product">
											제품
										</label>
									</div>
									<div class="form-check">
										<input name="item-classification" class="form-check-input" type="radio" value="상품" id="goods" />
										<label class="form-label" for="goods">
											상품
										</label>
									</div>
								</div>
							</div>
						</div>
						<div class="mb-2">
							<label for="item-name" class="form-label">품목명</label>
							<input type="text" id="item-name" class="form-control" name="item-name"/>
						</div>
						<div class="row mb-2">
							<div class="col-md">
								<label for="item-specification" class="form-label">규격</label> 
								<input type="number" id="item-specification" class="form-control" name="item-specification-value"/>
							</div>
							<div class="col-md d-flex align-items-end">
								<div class="search-combo-dropbox">
									<select name="item-specification-unit" class="form-select" id="item-specification-unit" aria-label="Default select example">
										<option vlaue="kg">kg</option>
										<option value="ml">ml</option>
									</select>
								</div>
							</div>
						</div>
						<div  class="mb-2">
							<label for="safety-stock" class="form-label">안전재고량</label>
							<input type="text" id="safety-stock" class="form-control" />
						</div>
					</div>
					<!-- 우측 column -->
					<div class="col-md">
						<div class="mb-2">
							<label for="supplier_name" class="form-label">구매처명</label>
							<!-- Search UI -->
							<div class="input-group input-group-merge">
								<input name="searchValue" type="text" class="form-control" placeholder="Search..." aria-label="Search..."
								aria-describedby="basic-addon-search31" id="supplier_name"/>
								<button type="button" class="btn btn-secondary search-btn" id="supplier-name-searchBtn">
									<i class="bx bx-search"></i>
								</button> 
							</div>
							<!-- / Search UI -->
							<!-- <span class="warning-text visible-hidden"><i class='bx bx-error-circle'></i>올바른 값을 입력하세요</span> -->
						</div>
						<div class="mb-2 visible-hidden">
							<label for="contact-person" class="form-label">담당자명</label>
							<input type="text" id="contact-person" class="form-control" />
						</div>
						<div class="mb-2 visible-hidden">
							<label for="contact-number" class="form-label">연락처</label>
							<input type="tel" id="contact-number" class="form-control" />
						</div>
						<div class="mb-2 visible-hidden">
							<label for="address" class="form-label">주소</label>
							<input type="text" id="address" class="form-control" />
						</div>
					</div>
				</div>
			</section>
			<footer class="modal-footer">
				<button type="button" class="btn btn-outline-secondary"
					data-bs-dismiss="modal">취소</button>
				<button type="submit" class="btn btn-primary">등록</button>
			</footer>
		</form>
	</div>
</div>