const handicapRadio = document.querySelectorAll('input[name="handicap"]');
const handicapDescription = document.getElementById('handicapDescription');
const descriptionInput = document.getElementById('description');

handicapRadio.forEach(radio => {
    radio.addEventListener('change', function() {
        if (this.value === 'true') {
            handicapDescription.classList.remove('handicap_desc');
            descriptionInput.required = true;
        } else {
            handicapDescription.classList.add('handicap_desc');
            descriptionInput.required = false;
        }
    });
});
// phone number validator
document.addEventListener("DOMContentLoaded", function () {
    const phoneInputs = document.querySelectorAll(".phone input[type='tel']");
    const errorMessages = document.querySelectorAll(".phone .error-msg");

    phoneInputs.forEach(function (input, index) {
        input.addEventListener("input", function () {
            if (input.validity.patternMismatch) {
                errorMessages[index].textContent = 'ከ 0 ውጭ ያሉትን ዘጠኝ አሃዞችን ያስገቡ';
                input.classList.add("error");
            } else {
                errorMessages[index].textContent = '';
                input.classList.remove("error");
            }
        });
    });
});
// service collapse
const serviceRadio = document.querySelectorAll('input[name="service"]');
const serviceInput = document.getElementById('serviceId');
serviceRadio.forEach(radio => {
    radio.addEventListener('change', function(){
        if (this.value == 'true') {
            serviceInput.classList.remove('service_list');
        } else {
            serviceInput.classList.add('service_list');
        }
    });  
});
const sServiceRadio = document.querySelectorAll('input[name="s_service"]');
const sServiceInput = document.getElementById('sServiceId');
sServiceRadio.forEach(radio => {
    radio.addEventListener('change', function(){
        if (this.value == 'true') {
            sServiceInput.classList.remove('service_list');
        } else {
            sServiceInput.classList.add('service_list');
        }
    });  
});
// education status collapse
const eduCheckRadio = document.querySelectorAll('input[name="educheck"]');
const learnedInput = document.getElementById('learned');
const subOfStudyInput = document.getElementById('subOfStudy')
eduCheckRadio.forEach(radio => {
    radio.addEventListener('change', function(){
        if (this.value === 'true') {
            learnedInput.classList.remove('learned');
            subOfStudyInput.required = true;
        } else {
            learnedInput.classList.add('learned');
            subOfStudyInput.required = false;
        }
    });
});
const parentCheck = document.querySelectorAll('input[name="parent_here"]');
const parentInputYes = document.getElementById('parentHere');
const parentInputNo = document.getElementById('pNothere')
parentCheck.forEach(radio => {
    radio.addEventListener('change', function(){
        if (this.value === 'true') {
            parentInputYes.classList.remove('parenthere');
            parentInputNo.classList.add('pnothere');
        } else {
            parentInputYes.classList.add('parenthere');
            parentInputNo.classList.remove('pnothere');
        }
    });
});
const sEduCheckRadio = document.querySelectorAll('input[name="seducheck"]');
const sLearnedInput = document.getElementById('slearned');
const sSubOfStudyInput = document.getElementById('ssubOfStudy')
sEduCheckRadio.forEach(radio => {
    radio.addEventListener('change', function(){
        if (this.value === 'true') {
            sLearnedInput.classList.remove('learned');
            sSubOfStudyInput.required = true;
        } else {
            sLearnedInput.classList.add('learned');
            sSubOfStudyInput.required = false;
        }
    });
});
// worlk status collapse
const iworkRadio = document.querySelectorAll('input[name="work_stats"]');
const iworkInput = document.getElementById('iWork');
const talentInput = document.getElementById('talent');
const professionInput = document.getElementById('profession');
const workPlaceInput = document.getElementById('workPlace');
const responibility = document.getElementById('responsiblity');
iworkRadio.forEach(radio => {
    radio.addEventListener('change', function(){
        if (this.value === 'true') {
            iworkInput.classList.remove('iwork');
            // talentInput.required = true;
            // professionInput.required = true;
            // workPlaceInput.required = true;
            // responibility.required = true;
        } else {
            iworkInput.classList.add('iwork')
        }
    });
});
// for spause
const sIworkRadio = document.querySelectorAll('input[name="s_work_stats"]');
const sIworkInput = document.getElementById('siWork');
const sTalentInput = document.getElementById('stalent');
const sProfessionInput = document.getElementById('sprofession');
const sWorkPlaceInput = document.getElementById('sworkPlace');
const sResponibility = document.getElementById('sresponsiblity');
sIworkRadio.forEach(radio => {
    radio.addEventListener('change', function(){
        if (this.value === 'true') {
            sIworkInput.classList.remove('iwork');
            // sTalentInput.required = true;
            // sProfessionInput.required = true;
            // sWorkPlaceInput.required = true;
            // sResponibility.required = true;
        } else {
            sIworkInput.classList.add('iwork')
            // sTalentInput.required = false;
            // sProfessionInput.required = false;
            // sWorkPlaceInput.required = false;
            // sResponibility.required = false;
        }
    });
});
// marrige status validator
const mStatusRadio = document.querySelectorAll('input[name="mstats"]');
const marriedForm = document.getElementById('maritalStatus');
// const spauseInChurchRadio = document.querySelectorAll('input[name="sinchurch"]');
// const ifHereOpt = document.getElementById('ifHere');
const spouseInThisChurch = document.querySelectorAll('input[name="here"]');
const notInThisChurchOpt = document.getElementById('noIfHere');
const yestInThisChurchOpt = document.getElementById('yesIfHere');
// const whereAreTheyInput = document.getElementById('whereAreThey');
mStatusRadio.forEach(radio => {
    radio.addEventListener('change', function(){
        if(this.value ==='true'){
            marriedForm.classList.remove('maritial_bool')
            spouseInThisChurch.forEach(radio =>{
                radio.addEventListener('change', function(){
                    if(this.value === 'true'){
                        yestInThisChurchOpt.classList.remove('yes_ifhere')
                        notInThisChurchOpt.classList.add('no_ifhere')
                    } else{
                        yestInThisChurchOpt.classList.add('yes_ifhere')
                        notInThisChurchOpt.classList.remove('no_ifhere')
                    }
                })
            })
        } else {
            marriedForm.classList.add('maritial_bool')
        }
    })
})